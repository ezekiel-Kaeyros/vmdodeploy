from rest_framework.response import Response
from django.http import JsonResponse
from .models import CourseModels
from rest_framework.decorators import api_view
from rest_framework import status

# Create your views here.


def get_list(self):
    course = list(CourseModels.objects.all().values())
    return JsonResponse(
        {
            "courses": course,
        },
    )

@api_view(["GET"])
def get(request, _id):
    if request.method == "GET":
        courses = CourseModels.objects.filter(id=_id).values()
        return Response(courses[0])



@api_view(["POST"])
def create(request):
    # form = CourseModels(request.data)

    # form.save()  # Save user to Database
    created = CourseModels.objects.create(
        title=request.data.get("title"),
        description=request.data.get("description"),
        link=request.data.get("link"),
        author=request.data.get("author"),
    )
    course = CourseModels.objects.filter(title=request.data.get("title")).values()
    # return JsonResponse({"course": list(course)})
    return Response(course[0])
    # else:
    #     return Response({"error": "bad request"}, status=status.HTTP_400_BAD_REQUEST)


@api_view(["DELETE"])
def remove(request, _id):
    if request.method == "DELETE":
        CourseModels.objects.filter(id=_id).delete()

        return Response(
            {
                "info": "delete",
            },
            status=status.HTTP_201_CREATED,
        )


@api_view(["PUT"])
def updatecourse(request, _id):
    course = CourseModels.objects.get(id=_id)
    course.title = request.data.get("title")
    course.description = request.data.get("description")
    course.link = request.data.get("link")
    course.author = request.data.get("author")
    course.save()
    projetEdited = CourseModels.objects.filter(id=_id).values()
    return Response(projetEdited[0])
